.class Lcom/join/mgps/activity/CreateEndGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CreateEndGameActivity;->showGamePopWindow(Landroid/view/View;Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/UserGameListBean;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/join/mgps/activity/CreateEndGameActivity;->gameBean:Lcom/join/mgps/dto/UserGameListBean;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/UserGameListBean;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 24
    .line 25
    iput-object p1, p2, Lcom/join/mgps/activity/CreateEndGameActivity;->gameBean:Lcom/join/mgps/dto/UserGameListBean;

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    iput-object p3, p2, Lcom/join/mgps/activity/CreateEndGameActivity;->bossLists:Ljava/util/List;

    .line 29
    .line 30
    iput-object p3, p2, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_choose_game:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserGameListBean;->getGameName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->sdv_image_game:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->gameBean:Lcom/join/mgps/dto/UserGameListBean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserGameListBean;->getGameIcon()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 55
    .line 56
    iget-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->gameBean:Lcom/join/mgps/dto/UserGameListBean;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserGameListBean;->getGameId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/CreateEndGameActivity;->access$000(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CreateEndGameActivity;->loadBossData(Z)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindowGame:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
