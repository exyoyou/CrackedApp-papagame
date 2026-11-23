.class Lcom/join/mgps/activity/b3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

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
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->P2:Lcom/join/mgps/adapter/n1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/adapter/n1;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->P2:Lcom/join/mgps/adapter/n1;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->a0(Lcom/join/mgps/activity/b3;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/activity/b3;->pauseVideo()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->U:Lit/sephiroth/android/library/widget/HListView;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->P0(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/b3$i;->b:Lcom/join/mgps/activity/b3;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->P2:Lcom/join/mgps/adapter/n1;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/n1;->c(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
