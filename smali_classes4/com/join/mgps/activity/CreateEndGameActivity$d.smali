.class Lcom/join/mgps/activity/CreateEndGameActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CreateEndGameActivity;->showBossPopWindow(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CreateEndGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->ll_boss_info:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_choose_boos:Landroid/widget/TextView;

    .line 14
    .line 15
    const/16 p2, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/join/mgps/dto/BossBean;

    .line 29
    .line 30
    iput-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 33
    .line 34
    iget-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_title:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/BossBean;->getBoos()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 48
    .line 49
    iget-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_sub_title:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/BossBean;->getLevel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_title:Landroid/widget/TextView;

    .line 63
    .line 64
    const-string p2, "#6194FF"

    .line 65
    .line 66
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_sub_title:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$d;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindow:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
