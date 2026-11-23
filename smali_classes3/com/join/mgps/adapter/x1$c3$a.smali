.class Lcom/join/mgps/adapter/x1$c3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1$c3;->a(Lcom/join/mgps/dto/DomainInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/DomainInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/x1$c3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1$c3;Lcom/join/mgps/dto/DomainInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$c3$a;->c:Lcom/join/mgps/adapter/x1$c3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$c3$a;->b:Lcom/join/mgps/dto/DomainInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$c3$a;->c:Lcom/join/mgps/adapter/x1$c3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$c3;->f:Lcom/join/mgps/adapter/x1;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameDetailsClick:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/x1$c3$a;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/x1$c3$a;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$c3$a;->c:Lcom/join/mgps/adapter/x1$c3;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$c3;->f:Lcom/join/mgps/adapter/x1;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$c3$a;->b:Lcom/join/mgps/dto/DomainInfoBean;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "game_details"

    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
