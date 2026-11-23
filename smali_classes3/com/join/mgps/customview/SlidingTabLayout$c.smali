.class Lcom/join/mgps/customview/SlidingTabLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout;Lcom/join/mgps/customview/SlidingTabLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayout;)V

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
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/o0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/o0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout;->e(Lcom/join/mgps/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/o0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const v3, 0x7f060393

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout$c;->b:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout;->a(Lcom/join/mgps/customview/SlidingTabLayout;)Lcom/join/mgps/customview/o0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/TextView;

    .line 75
    .line 76
    const v2, -0x9e9e9f

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method
