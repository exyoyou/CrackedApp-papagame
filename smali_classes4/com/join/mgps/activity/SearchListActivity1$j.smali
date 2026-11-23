.class Lcom/join/mgps/activity/SearchListActivity1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fresh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->b:Z

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-ge p1, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v1, 0x1

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$j;->c:Lcom/join/mgps/activity/SearchListActivity1;

    .line 69
    .line 70
    iget v2, v0, Lcom/join/mgps/activity/SearchListActivity1;->plugin_num:I

    .line 71
    .line 72
    if-ne p1, v2, :cond_2

    .line 73
    .line 74
    iget p1, v0, Lcom/join/mgps/activity/SearchListActivity1;->lang_id:I

    .line 75
    .line 76
    if-eq v1, p1, :cond_3

    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->loadingRefresh()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
