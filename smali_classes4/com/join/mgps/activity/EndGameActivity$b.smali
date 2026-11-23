.class Lcom/join/mgps/activity/EndGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/EndGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/EndGameActivity;->access$100(Lcom/join/mgps/activity/EndGameActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/EndGameActivity;->ivExpand()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    const/4 p2, 0x0

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$200(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p2, v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$200(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 39
    .line 40
    if-ne p2, p3, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameNameListBean;->setSelected(Z)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/join/mgps/activity/EndGameActivity;->access$300(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$i;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$200(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 67
    .line 68
    invoke-static {p2}, Lcom/join/mgps/activity/EndGameActivity;->access$200(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 77
    .line 78
    invoke-static {p2, v0}, Lcom/join/mgps/activity/EndGameActivity;->access$402(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/dto/EndGameNameListBean;)Lcom/join/mgps/dto/EndGameNameListBean;

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity$b;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 82
    .line 83
    iget-object p2, p2, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    invoke-virtual {p2, p3, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method
