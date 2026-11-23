.class Lcom/join/mgps/activity/label/MainLabelActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/fragment/y3;->Y()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f080abd

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/y3;->f0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x7f080abe

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity$a;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 59
    .line 60
    iget v3, v3, Lcom/join/mgps/activity/label/MainLabelActivity;->fid:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/y3;->f0(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/y3;->j0(Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
