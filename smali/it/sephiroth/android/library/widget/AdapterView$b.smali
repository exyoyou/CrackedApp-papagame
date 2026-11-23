.class public Lit/sephiroth/android/library/widget/AdapterView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetView",
            "position",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$b;->a:Landroid/view/View;

    .line 5
    .line 6
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView$b;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lit/sephiroth/android/library/widget/AdapterView$b;->c:J

    .line 9
    .line 10
    return-void
.end method
