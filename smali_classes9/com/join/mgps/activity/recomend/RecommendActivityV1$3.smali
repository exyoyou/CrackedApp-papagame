.class Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivityV1;->animView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$300(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->iv_1:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->iv_1:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$300(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->access$302(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
