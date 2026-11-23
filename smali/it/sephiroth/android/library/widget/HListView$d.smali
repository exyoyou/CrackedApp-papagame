.class Lit/sephiroth/android/library/widget/HListView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field final synthetic d:Lit/sephiroth/android/library/widget/HListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/HListView;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView$d;->d:Lit/sephiroth/android/library/widget/HListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/HListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView$d;-><init>(Lit/sephiroth/android/library/widget/HListView;)V

    return-void
.end method


# virtual methods
.method public a(II)Lit/sephiroth/android/library/widget/HListView$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "left"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView$d;->b:I

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/HListView$d;->c:I

    .line 4
    .line 5
    return-object p0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView$d;->d:Lit/sephiroth/android/library/widget/HListView;

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView$d;->b:I

    .line 4
    .line 5
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView$d;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
