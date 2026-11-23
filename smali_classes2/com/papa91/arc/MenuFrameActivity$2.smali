.class Lcom/papa91/arc/MenuFrameActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/view/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->initPerformanceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$2;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$2;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa91/arc/MenuFrameActivity;->selectPerformance(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$2;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$2;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$2;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
