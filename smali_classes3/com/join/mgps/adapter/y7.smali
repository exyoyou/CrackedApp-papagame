.class public Lcom/join/mgps/adapter/y7;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/y7$n;,
        Lcom/join/mgps/adapter/y7$i;,
        Lcom/join/mgps/adapter/y7$k;,
        Lcom/join/mgps/adapter/y7$h;,
        Lcom/join/mgps/adapter/y7$g;,
        Lcom/join/mgps/adapter/y7$m;,
        Lcom/join/mgps/adapter/y7$l;,
        Lcom/join/mgps/adapter/y7$j;,
        Lcom/join/mgps/adapter/y7$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Lcom/join/mgps/adapter/b8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p2, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/y7;->j(Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/adapter/y7$k;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/y7;->h(Lcom/join/mgps/adapter/y7$k;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Lcom/join/mgps/adapter/y7$j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/y7;->i(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Lcom/join/mgps/adapter/y7$j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/y7;->f(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/y7$i;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/y7;->g(Lcom/join/mgps/adapter/y7$i;Ljava/util/List;)V

    return-void
.end method

.method private synthetic f(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "typeId"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getTagId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "tagId"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "tagName"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p2, "from"

    .line 31
    .line 32
    const/16 v1, 0xcf

    .line 33
    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->btnMore:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private static synthetic g(Lcom/join/mgps/adapter/y7$i;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/y7$i;->a(Lcom/join/mgps/adapter/y7$i;)Lcom/join/mgps/customview/CirclePageIndicator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-gt p1, v1, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/join/mgps/adapter/y7$i;->a(Lcom/join/mgps/adapter/y7$i;)Lcom/join/mgps/customview/CirclePageIndicator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Lcom/join/mgps/adapter/y7$i;->b(Lcom/join/mgps/adapter/y7$i;)Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0, v2}, Lcom/join/mgps/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private synthetic h(Lcom/join/mgps/adapter/y7$k;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p3, Landroid/content/Intent;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "default_position"

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p3, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private synthetic i(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Lcom/join/mgps/adapter/y7$j;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p3, v0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameActivity;->start(Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private synthetic j(Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "4"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getColl_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xcf

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    const-string v1, "207"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->btnMore:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string v0, "\u66f4\u591a"

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p3, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gt v1, p1, :cond_2

    .line 15
    .line 16
    return v0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/y7;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_0
    check-cast p1, Lcom/join/mgps/adapter/y7$j;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v1, v4, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->a(Lcom/join/mgps/adapter/y7$j;)Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->a(Lcom/join/mgps/adapter/y7$j;)Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->a(Lcom/join/mgps/adapter/y7$j;)Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/adapter/g8;

    .line 58
    .line 59
    invoke-direct {v1, v0, v3}, Lcom/join/mgps/adapter/g8;-><init>(Ljava/util/List;Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->a(Lcom/join/mgps/adapter/y7$j;)Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->b(Lcom/join/mgps/adapter/y7$j;)Landroid/widget/LinearLayout;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v2, Lcom/join/mgps/adapter/w7;

    .line 74
    .line 75
    invoke-direct {v2, p0, p2, p1}, Lcom/join/mgps/adapter/w7;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Lcom/join/mgps/adapter/y7$j;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$j;->a(Lcom/join/mgps/adapter/y7$j;)Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lcom/join/mgps/adapter/y7$c;

    .line 86
    .line 87
    invoke-direct {p2, p0, v1}, Lcom/join/mgps/adapter/y7$c;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/adapter/g8;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_1
    check-cast p1, Lcom/join/mgps/adapter/y7$l;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Ljava/lang/Float;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iget-object v0, p1, Lcom/join/mgps/adapter/y7$l;->d:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    float-to-int p2, p2

    .line 114
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    .line 116
    iget-object p1, p1, Lcom/join/mgps/adapter/y7$l;->d:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :pswitch_2
    check-cast p1, Lcom/join/mgps/adapter/y7$m;

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/util/List;

    .line 130
    .line 131
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 134
    .line 135
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$m;->a(Lcom/join/mgps/adapter/y7$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$m;->a(Lcom/join/mgps/adapter/y7$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    new-instance v3, Lcom/join/mgps/adapter/a8;

    .line 150
    .line 151
    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/a8;-><init>(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollOffset()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-lez v0, :cond_0

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollOffset()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 172
    .line 173
    .line 174
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$m;->a(Lcom/join/mgps/adapter/y7$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v0, Lcom/join/mgps/adapter/y7$f;

    .line 179
    .line 180
    invoke-direct {v0, p0, p2, v1}, Lcom/join/mgps/adapter/y7$f;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_3
    check-cast p1, Lcom/join/mgps/adapter/y7$g;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Ljava/util/List;

    .line 195
    .line 196
    new-instance v0, Lcom/join/mgps/adapter/y7$e;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 199
    .line 200
    const/4 v2, 0x2

    .line 201
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/adapter/y7$e;-><init>(Lcom/join/mgps/adapter/y7;Landroid/content/Context;I)V

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$g;->a(Lcom/join/mgps/adapter/y7$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$g;->a(Lcom/join/mgps/adapter/y7$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance v0, Lcom/join/mgps/adapter/s7;

    .line 216
    .line 217
    invoke-direct {v0, p2}, Lcom/join/mgps/adapter/s7;-><init>(Ljava/util/List;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_4
    check-cast p1, Lcom/join/mgps/adapter/y7$h;

    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 232
    .line 233
    if-eqz v0, :cond_2

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    if-eqz v4, :cond_2

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-lez v4, :cond_2

    .line 250
    .line 251
    new-instance v4, Lcom/join/mgps/adapter/y7$d;

    .line 252
    .line 253
    iget-object v5, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 254
    .line 255
    invoke-direct {v4, p0, v5, v1}, Lcom/join/mgps/adapter/y7$d;-><init>(Lcom/join/mgps/adapter/y7;Landroid/content/Context;I)V

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$h;->a(Lcom/join/mgps/adapter/y7$h;)Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$h;->a(Lcom/join/mgps/adapter/y7$h;)Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 270
    .line 271
    .line 272
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$h;->a(Lcom/join/mgps/adapter/y7$h;)Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 277
    .line 278
    .line 279
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$h;->a(Lcom/join/mgps/adapter/y7$h;)Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    new-instance v3, Lcom/join/mgps/adapter/e8;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/e8;-><init>(Ljava/util/List;Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$h;->b(Lcom/join/mgps/adapter/y7$h;)Landroid/widget/LinearLayout;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    new-instance v1, Lcom/join/mgps/adapter/x7;

    .line 300
    .line 301
    invoke-direct {v1, p0, v0, p2}, Lcom/join/mgps/adapter/x7;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Lcom/join/mgps/dto/SimulatorFastEntryListBean;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :pswitch_5
    check-cast p1, Lcom/join/mgps/adapter/y7$k;

    .line 310
    .line 311
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Ljava/util/List;

    .line 316
    .line 317
    new-instance v4, Lcom/join/mgps/adapter/y7$b;

    .line 318
    .line 319
    iget-object v5, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 320
    .line 321
    invoke-direct {v4, p0, v5, v1}, Lcom/join/mgps/adapter/y7$b;-><init>(Lcom/join/mgps/adapter/y7;Landroid/content/Context;I)V

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$k;->a(Lcom/join/mgps/adapter/y7$k;)Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 329
    .line 330
    .line 331
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$k;->a(Lcom/join/mgps/adapter/y7$k;)Landroidx/recyclerview/widget/RecyclerView;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 336
    .line 337
    .line 338
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$k;->a(Lcom/join/mgps/adapter/y7$k;)Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 343
    .line 344
    .line 345
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$k;->a(Lcom/join/mgps/adapter/y7$k;)Landroidx/recyclerview/widget/RecyclerView;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    new-instance v2, Lcom/join/mgps/adapter/e8;

    .line 350
    .line 351
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/adapter/e8;-><init>(Ljava/util/List;Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 355
    .line 356
    .line 357
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$k;->b(Lcom/join/mgps/adapter/y7$k;)Landroid/widget/LinearLayout;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    new-instance v1, Lcom/join/mgps/adapter/v7;

    .line 362
    .line 363
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/adapter/v7;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/adapter/y7$k;Lcom/join/mgps/dto/SimulatorFastEntryListBean;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    goto :goto_0

    .line 370
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/adapter/y7;->g:Lcom/join/mgps/adapter/b8;

    .line 371
    .line 372
    if-nez v0, :cond_2

    .line 373
    .line 374
    move-object v0, p1

    .line 375
    check-cast v0, Lcom/join/mgps/adapter/y7$i;

    .line 376
    .line 377
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    check-cast p2, Ljava/util/List;

    .line 382
    .line 383
    new-instance v1, Lcom/join/mgps/adapter/b8;

    .line 384
    .line 385
    iget-object v2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 386
    .line 387
    invoke-direct {v1, v2, p2}, Lcom/join/mgps/adapter/b8;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 388
    .line 389
    .line 390
    iput-object v1, p0, Lcom/join/mgps/adapter/y7;->g:Lcom/join/mgps/adapter/b8;

    .line 391
    .line 392
    invoke-static {v0}, Lcom/join/mgps/adapter/y7$i;->b(Lcom/join/mgps/adapter/y7$i;)Landroidx/viewpager/widget/ViewPager;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/join/mgps/adapter/y7;->g:Lcom/join/mgps/adapter/b8;

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v0}, Lcom/join/mgps/adapter/y7$i;->b(Lcom/join/mgps/adapter/y7$i;)Landroidx/viewpager/widget/ViewPager;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    new-instance v2, Lcom/join/mgps/adapter/y7$a;

    .line 406
    .line 407
    invoke-direct {v2, p0, p2, p1}, Lcom/join/mgps/adapter/y7$a;-><init>(Lcom/join/mgps/adapter/y7;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Lcom/join/mgps/adapter/y7$i;->b(Lcom/join/mgps/adapter/y7$i;)Landroidx/viewpager/widget/ViewPager;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    new-instance v1, Lcom/join/mgps/adapter/u7;

    .line 418
    .line 419
    invoke-direct {v1, v0, p2}, Lcom/join/mgps/adapter/u7;-><init>(Lcom/join/mgps/adapter/y7$i;Ljava/util/List;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_0

    .line 426
    :pswitch_7
    check-cast p1, Lcom/join/mgps/adapter/y7$n;

    .line 427
    .line 428
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$n;->a(Lcom/join/mgps/adapter/y7$n;)Landroid/widget/TextView;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    .line 441
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$n;->b(Lcom/join/mgps/adapter/y7$n;)Landroid/widget/LinearLayout;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getTagId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-eqz v2, :cond_1

    .line 454
    .line 455
    const/16 v3, 0x8

    .line 456
    .line 457
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    invoke-static {p1}, Lcom/join/mgps/adapter/y7$n;->b(Lcom/join/mgps/adapter/y7$n;)Landroid/widget/LinearLayout;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    new-instance v1, Lcom/join/mgps/adapter/t7;

    .line 465
    .line 466
    invoke-direct {v1, p0, p2, v0}, Lcom/join/mgps/adapter/t7;-><init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    .line 471
    .line 472
    :cond_2
    :goto_0
    return-void

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v1, 0x7f0d0612

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/join/mgps/adapter/y7$j;

    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$j;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const v1, 0x7f0d07bd

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lcom/join/mgps/adapter/y7$l;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$l;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const v1, 0x7f0d0620

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lcom/join/mgps/adapter/y7$m;

    .line 61
    .line 62
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$m;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const v1, 0x7f0d060f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Lcom/join/mgps/adapter/y7$g;

    .line 80
    .line 81
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$g;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const v1, 0x7f0d0611

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Lcom/join/mgps/adapter/y7$h;

    .line 99
    .line 100
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$h;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const v1, 0x7f0d061e

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance p2, Lcom/join/mgps/adapter/y7$k;

    .line 118
    .line 119
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$k;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const v1, 0x7f0d0623

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance p2, Lcom/join/mgps/adapter/y7$i;

    .line 137
    .line 138
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$i;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_7
    iget-object p2, p0, Lcom/join/mgps/adapter/y7;->f:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const v1, 0x7f0d0622

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Lcom/join/mgps/adapter/y7$n;

    .line 156
    .line 157
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/y7$n;-><init>(Lcom/join/mgps/adapter/y7;Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    return-object p2

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
