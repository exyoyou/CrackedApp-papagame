.class Lcom/join/mgps/adapter/a3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/a3;->e(Lcom/join/mgps/adapter/a3$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/a3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/a3;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataBean",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/a3$a;->d:Lcom/join/mgps/adapter/a3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/a3$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/a3$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/adapter/a3$a;->d:Lcom/join/mgps/adapter/a3;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/a3$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/a3$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {p1, v0, v2}, Lcom/join/mgps/adapter/a3;->b(Lcom/join/mgps/adapter/a3;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "fromGameDetailP2"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/adapter/a3$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/adapter/a3$a;->d:Lcom/join/mgps/adapter/a3;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    .line 78
    .line 79
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/adapter/a3$a;->d:Lcom/join/mgps/adapter/a3;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "22-21-"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/join/mgps/adapter/a3$a;->c:I

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Lcom/join/mgps/adapter/a3;->c(Lcom/join/mgps/adapter/a3;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
