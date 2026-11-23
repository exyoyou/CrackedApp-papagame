.class Lit/sephiroth/android/library/widget/AbsHListView$d;
.super Lit/sephiroth/android/library/widget/AbsHListView$o;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic d:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 10
    .line 11
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 12
    .line 13
    if-ltz v1, :cond_2

    .line 14
    .line 15
    iget v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 23
    .line 24
    iget-boolean v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 36
    .line 37
    iget v2, v1, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 38
    .line 39
    iget-wide v4, v1, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->u0(Landroid/view/View;IJ)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$d;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method
