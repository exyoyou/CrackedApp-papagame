.class Lit/sephiroth/android/library/widget/AbsHListView$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$g;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$g;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 2
    .line 3
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 4
    .line 5
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->O(Lit/sephiroth/android/library/widget/AbsHListView;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 10
    .line 11
    iget-object v1, v1, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 12
    .line 13
    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->P(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 18
    .line 19
    invoke-static {v2}, Lit/sephiroth/android/library/widget/AbsHListView$g;->a(Lit/sephiroth/android/library/widget/AbsHListView$g;)Lit/sephiroth/android/library/widget/c;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    if-ne v0, v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 30
    .line 31
    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 32
    .line 33
    invoke-static {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->u(Lit/sephiroth/android/library/widget/AbsHListView;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-float v3, v3

    .line 38
    const/16 v4, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v1, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    neg-float v0, v0

    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 53
    .line 54
    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 55
    .line 56
    invoke-static {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->v(Lit/sephiroth/android/library/widget/AbsHListView;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    int-to-float v3, v3

    .line 61
    cmpl-float v1, v1, v3

    .line 62
    .line 63
    if-ltz v1, :cond_1

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v2, v0, v1}, Lit/sephiroth/android/library/widget/c;->q(FF)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 73
    .line 74
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 75
    .line 76
    const-wide/16 v1, 0x28

    .line 77
    .line 78
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 83
    .line 84
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;->b:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 88
    .line 89
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void
.end method
