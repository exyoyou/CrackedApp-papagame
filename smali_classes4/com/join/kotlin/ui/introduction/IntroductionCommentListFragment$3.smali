.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1
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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$100(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/BbsCommentListBean;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const v0, 0x7f0a0a62

    .line 18
    .line 19
    .line 20
    if-ne p3, v0, :cond_0

    .line 21
    .line 22
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 23
    .line 24
    invoke-virtual {p3, p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const v0, 0x7f0a0a72

    .line 33
    .line 34
    .line 35
    if-ne p3, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 48
    .line 49
    iget p3, p2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 50
    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2, p3, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getRuid()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 70
    .line 71
    iget v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2, p3, v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const p3, 0x7f0a03cc

    .line 86
    .line 87
    .line 88
    if-ne p2, p3, :cond_3

    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    return-void
.end method
