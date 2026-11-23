.class Lcom/join/mgps/adapter/x1$u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$searchDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->c:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "brief"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$u0;->c:Lcom/join/mgps/adapter/x1;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->c:Lcom/join/mgps/adapter/x1;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->c:Lcom/join/mgps/adapter/x1;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->c:Lcom/join/mgps/adapter/x1;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$u0;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
