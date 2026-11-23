.class Lit/sephiroth/android/library/widget/AbsHListView$k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$k;->e(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lit/sephiroth/android/library/widget/AbsHListView$k;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$k;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$position",
            "val$postOffset",
            "val$duration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->e:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->b:I

    .line 4
    .line 5
    iput p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->c:I

    .line 6
    .line 7
    iput p4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->e:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->b:I

    .line 4
    .line 5
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->c:I

    .line 6
    .line 7
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$c;->d:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e(III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
