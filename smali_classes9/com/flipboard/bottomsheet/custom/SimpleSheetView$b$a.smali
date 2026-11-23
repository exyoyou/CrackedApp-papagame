.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

.field final synthetic c:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->c:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->c:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;->b(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
