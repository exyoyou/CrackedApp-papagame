.class Lcom/join/mgps/fragment/i1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i1;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

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
    .locals 2
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
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/fragment/i1;->O(Lcom/join/mgps/fragment/i1;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p2, v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/fragment/i1;->O(Lcom/join/mgps/fragment/i1;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 26
    .line 27
    if-ne p2, p3, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameNameListBean;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/fragment/i1;->P(Lcom/join/mgps/fragment/i1;)Lcom/join/mgps/fragment/i1$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/join/mgps/fragment/i1;->O(Lcom/join/mgps/fragment/i1;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    instance-of p1, p1, Lcom/join/mgps/activity/EndGameActivity_;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/activity/EndGameActivity_;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/join/mgps/fragment/i1$b;->a:Lcom/join/mgps/fragment/i1;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/join/mgps/fragment/i1;->O(Lcom/join/mgps/fragment/i1;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/EndGameActivity;->chooseGame(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method
