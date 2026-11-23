.class Lcom/join/mgps/activity/GameMainActivity4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity4;->updateViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->ivTips:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity4;->access$000(Lcom/join/mgps/activity/GameMainActivity4;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u52a8\u6001"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity4;->ivChoose:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity4;->access$000(Lcom/join/mgps/activity/GameMainActivity4;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "\u6210\u5c31"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$d;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity4;->ivTips:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method
