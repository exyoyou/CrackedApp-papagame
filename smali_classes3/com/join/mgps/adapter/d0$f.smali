.class Lcom/join/mgps/adapter/d0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/db/tables/FightMainTable;

.field final synthetic c:Lcom/join/mgps/adapter/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d0;Lcom/join/mgps/db/tables/FightMainTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fightMainTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d0$f;->c:Lcom/join/mgps/adapter/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

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
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getJump_type()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getTpl_type()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$f;->b:Lcom/join/mgps/db/tables/FightMainTable;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/adapter/d0$f;->c:Lcom/join/mgps/adapter/d0;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/join/mgps/adapter/d0;->b(Lcom/join/mgps/adapter/d0;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
