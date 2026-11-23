.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;
.super Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipLuckDrawlHolder"
.end annotation


# instance fields
.field prizeDataImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeDataLayout:Landroid/widget/LinearLayout;

.field prizeDataName:Landroid/widget/TextView;

.field prizeListImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeListLayout:Landroid/widget/LinearLayout;

.field prizeListName:Landroid/widget/TextView;

.field prizeRuleImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeRuleLayout:Landroid/widget/LinearLayout;

.field prizeRuleName:Landroid/widget/TextView;

.field scratch:Lcom/join/mgps/customview/ScratchView;

.field scratchBack:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

.field todayScratchNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipCenterActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1293

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a1295

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListName:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a1292

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeDataName:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a1298    # 1.8353E38f

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeRuleName:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a1483

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/join/mgps/customview/ScratchView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 60
    .line 61
    const p1, 0x7f0a17dc

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->todayScratchNumber:Landroid/widget/TextView;

    .line 71
    .line 72
    const p1, 0x7f0a1294

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListLayout:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const p1, 0x7f0a1291

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeDataLayout:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    const p1, 0x7f0a1297

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeRuleLayout:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    const p1, 0x7f0a1484

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratchBack:Landroid/widget/TextView;

    .line 115
    .line 116
    return-void
.end method
