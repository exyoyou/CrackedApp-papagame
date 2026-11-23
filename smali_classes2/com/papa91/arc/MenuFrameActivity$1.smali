.class Lcom/papa91/arc/MenuFrameActivity$1;
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
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

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
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 12
    .line 13
    iget v1, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    if-le v1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput v0, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 21
    .line 22
    :cond_1
    iget-object v0, p1, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 23
    .line 24
    iget p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$1;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
