.class Lcom/join/mgps/fragment/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f0;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/f0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$notAlphH"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/f0$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "verticalOffset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/f0$a;->a:I

    .line 2
    .line 3
    neg-int v1, p2

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/join/mgps/fragment/f0;->s:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/fragment/f0;->s:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/join/mgps/fragment/f0$a;->a:I

    .line 41
    .line 42
    add-int/2addr p2, v0

    .line 43
    int-to-float p2, p2

    .line 44
    mul-float p2, p2, v2

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget v4, p0, Lcom/join/mgps/fragment/f0$a;->a:I

    .line 55
    .line 56
    sub-int/2addr v0, v4

    .line 57
    int-to-float v0, v0

    .line 58
    div-float/2addr p2, v0

    .line 59
    iget-object v0, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/join/mgps/fragment/f0;->s:Landroid/widget/TextView;

    .line 69
    .line 70
    const v4, 0x3f4ccccd    # 0.8f

    .line 71
    .line 72
    .line 73
    mul-float p2, p2, v4

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-ne v1, p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/mgps/fragment/f0;->h:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/join/mgps/fragment/f0;->f:Lcom/join/mgps/customview/ViewPagerSlide;

    .line 94
    .line 95
    const/4 p2, 0x1

    .line 96
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ViewPagerSlide;->setSlide(Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f0$a;->b:Lcom/join/mgps/fragment/f0;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/join/mgps/fragment/f0;->f:Lcom/join/mgps/customview/ViewPagerSlide;

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ViewPagerSlide;->setSlide(Z)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method
