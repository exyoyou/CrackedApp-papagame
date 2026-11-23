.class Lit/sephiroth/android/library/widget/AbsHListView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 11
    .line 12
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->E(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    and-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->F(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
