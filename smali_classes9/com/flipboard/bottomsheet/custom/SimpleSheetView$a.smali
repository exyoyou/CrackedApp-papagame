.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

.field final synthetic c:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->c:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;->onClose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
