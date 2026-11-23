.class Lit/sephiroth/android/library/widget/AbsHListView$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView$k;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->c:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->c:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k$a;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
