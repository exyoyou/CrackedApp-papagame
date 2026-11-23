.class Lcom/join/mgps/activity/label/MainLabelActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;->initTab(Lcom/join/mgps/dto/MainLabelBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
            "state"
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
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/fragment/y3;->Y()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7f080abe

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$c;->b:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->getPostsFilterSwitch()Landroid/widget/ImageView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v0, 0x7f080abd

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
