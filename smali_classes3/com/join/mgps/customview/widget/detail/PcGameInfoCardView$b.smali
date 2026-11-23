.class Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->a(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickAD:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "2"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;->c:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
