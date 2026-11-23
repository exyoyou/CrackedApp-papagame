.class public Lcom/join/mgps/adapter/e8;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "isClassic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d0614

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/adapter/e8;->e:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/adapter/e8;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/e8;->t(Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p3, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {p3}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v0, "207"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    .line 33
    const/16 v0, 0xcf

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v0, v1, p3}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/e8;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a06ec

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getIco()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0713

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getGame()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/adapter/d8;

    .line 30
    .line 31
    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/adapter/d8;-><init>(Lcom/join/mgps/adapter/e8;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
