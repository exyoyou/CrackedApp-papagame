.class Lcom/join/mgps/customview/ClouldItemView3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ClouldItemView3;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/papa/sim/statistic/Event;->VipArchive_buy_page:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/mgps/customview/ClouldItemView3;->a(Lcom/join/mgps/customview/ClouldItemView3;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
