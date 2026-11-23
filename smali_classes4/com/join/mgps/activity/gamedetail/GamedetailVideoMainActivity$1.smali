.class Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

.field final synthetic val$isPc:Z


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isPc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->val$isPc:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->pauseVideo()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->resumVideo()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 20
    .line 21
    const-string v0, "1"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    if-ne p1, v0, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->pauseVideo()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->resumVideo()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->hideCover()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$100(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lcom/papa/sim/statistic/Event;->video_visitGamePage:Lcom/papa/sim/statistic/Event;

    .line 64
    .line 65
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    sput-boolean p1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;->val$isPc:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    const-string v0, "3"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "0"

    .line 94
    .line 95
    :goto_0
    invoke-static {p1, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    return-void
.end method
