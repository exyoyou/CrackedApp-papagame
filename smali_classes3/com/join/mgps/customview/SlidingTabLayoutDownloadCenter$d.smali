.class public Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;


# direct methods
.method protected constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 2
    .line 3
    iput p1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

    .line 4
    .line 5
    iput p2, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:F

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    mul-float v1, v1, p2

    .line 29
    .line 30
    float-to-int v1, v1

    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 46
    .line 47
    .line 48
    :cond_1
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
