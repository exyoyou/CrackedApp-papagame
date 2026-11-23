.class Lcom/join/mgps/customview/AutoScrollViewPager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/AutoScrollViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->c(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->d(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->a(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->f(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$a;->a:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/join/mgps/customview/AutoScrollViewPager;->e(Lcom/join/mgps/customview/AutoScrollViewPager;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
