.class Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/widget/view/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/view/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/widget/view/HeaderGridView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
