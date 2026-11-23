.class Lit/sephiroth/android/library/widget/AbsHListView$e;
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
    name = "e"
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 4
    .line 5
    iget v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 15
    .line 16
    iget v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 17
    .line 18
    iget-object v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 32
    .line 33
    iget-boolean v6, v1, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->u0(Landroid/view/View;IJ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$e;->d:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method
