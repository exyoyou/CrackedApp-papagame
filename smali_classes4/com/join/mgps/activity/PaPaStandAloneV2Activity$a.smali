.class Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;->b:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$a;->b:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->access$000(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;)[Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    aget-object v0, v0, p1

    .line 8
    .line 9
    instance-of v1, v0, Lcom/join/mgps/callbacks/q;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/join/mgps/callbacks/q;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/q;->onPageVisible(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
