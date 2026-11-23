.class Lcom/join/mgps/customview/LoopViewPager$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LoopViewPager$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/LoopViewPager$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LoopViewPager$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 30
    .line 31
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v1, v4

    .line 56
    if-lt v0, v1, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$b$a;->b:Lcom/join/mgps/customview/LoopViewPager$b;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager$b;->b:Lcom/join/mgps/customview/LoopViewPager;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v2

    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
