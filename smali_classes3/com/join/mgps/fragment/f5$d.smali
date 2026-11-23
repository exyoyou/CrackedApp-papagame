.class Lcom/join/mgps/fragment/f5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f5;->j0(ZLcom/join/mgps/dto/DomainInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/DomainInfoBean;

.field final synthetic c:Lcom/join/mgps/fragment/f5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f5;Lcom/join/mgps/dto/DomainInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f5$d;->c:Lcom/join/mgps/fragment/f5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/f5$d;->b:Lcom/join/mgps/dto/DomainInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$d;->c:Lcom/join/mgps/fragment/f5;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/f5;->X(Lcom/join/mgps/fragment/f5;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameWishClick:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/f5$d;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "0"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/join/mgps/fragment/f5$d;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/f5$d;->c:Lcom/join/mgps/fragment/f5;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$d;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "game_search_wish"

    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
