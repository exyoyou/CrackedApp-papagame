.class Lit/sephiroth/android/library/widget/AbsHListView$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lit/sephiroth/android/library/widget/AbsHListView$k;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$k;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$position",
            "val$boundPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->d:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->b:I

    .line 4
    .line 5
    iput p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->d:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->b:I

    .line 4
    .line 5
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$b;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
