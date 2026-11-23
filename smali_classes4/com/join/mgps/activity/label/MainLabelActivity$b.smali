.class Lcom/join/mgps/activity/label/MainLabelActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMeasure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->rl_title:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_multi_type_posts:Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_multi_type_posts:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sub-int/2addr v0, v1

    .line 57
    :cond_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$b;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method
