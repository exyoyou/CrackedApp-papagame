.class Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->g(ILjava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->a(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Landroid/widget/LinearLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->b(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->c(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Ls4/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Ls4/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Ls4/b;->onTabSelect(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->e(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->f(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->o()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Ls4/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->e(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 79
    .line 80
    invoke-static {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->f(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->d(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;)Ls4/b;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0, p1}, Ls4/b;->onTabReselect(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager$a;->b:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->o()V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void
.end method
