.class Lcom/flipboard/bottomsheet/BottomSheetLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
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
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sheetView",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 12
    .line 13
    if-eq p2, p3, :cond_3

    .line 14
    .line 15
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ge p1, p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 30
    .line 31
    if-ne p2, p3, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 34
    .line 35
    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 36
    .line 37
    invoke-static {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 41
    .line 42
    int-to-float p3, p1

    .line 43
    invoke-static {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-lez p2, :cond_3

    .line 54
    .line 55
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-le p1, p2, :cond_3

    .line 62
    .line 63
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 70
    .line 71
    if-ne p2, p3, :cond_3

    .line 72
    .line 73
    int-to-float p2, p1

    .line 74
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    cmpl-float p3, p2, p3

    .line 81
    .line 82
    if-nez p3, :cond_2

    .line 83
    .line 84
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 85
    .line 86
    sget-object p4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 87
    .line 88
    invoke-static {p3, p4}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 92
    .line 93
    invoke-static {p3, p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I

    .line 99
    .line 100
    .line 101
    return-void
.end method
