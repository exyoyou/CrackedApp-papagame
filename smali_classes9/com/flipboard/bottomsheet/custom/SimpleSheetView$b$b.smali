.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/view/View;

.field final synthetic e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "root"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a084f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->a:Landroid/widget/ImageView;

    .line 16
    .line 17
    const p1, 0x7f0a1767

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->b:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a048c

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->c:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a050c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->d:Landroid/view/View;

    .line 47
    .line 48
    return-void
.end method
