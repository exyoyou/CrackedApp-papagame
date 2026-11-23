.class Lit/sephiroth/android/library/widget/HListView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView$b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method c(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedPosition",
            "amountToScroll"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView$b;->a:I

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/HListView$b;->b:I

    .line 4
    .line 5
    return-void
.end method
