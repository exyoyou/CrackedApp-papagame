.class Lcom/join/mgps/activity/SearchHintActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->initBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$l;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 52
    .line 53
    sget-object v1, Lcom/papa/sim/statistic/Event;->searchReturnExpGamePic:Lcom/papa/sim/statistic/Event;

    .line 54
    .line 55
    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$700(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
