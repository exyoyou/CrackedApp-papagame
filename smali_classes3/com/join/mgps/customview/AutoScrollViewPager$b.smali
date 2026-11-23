.class Lcom/join/mgps/customview/AutoScrollViewPager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/AutoScrollViewPager;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->b:Lcom/join/mgps/customview/AutoScrollViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager$b;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

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
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->b:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    rem-int v0, p1, v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->b:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 14
    .line 15
    invoke-static {v1, p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->b(Lcom/join/mgps/customview/AutoScrollViewPager;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager$b;->b:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->i(Lcom/join/mgps/customview/AutoScrollViewPager;I)I

    .line 21
    .line 22
    .line 23
    return-void
.end method
