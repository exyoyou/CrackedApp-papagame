.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f0a0949

    .line 26
    .line 27
    .line 28
    if-ne p1, v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->b:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x4

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
