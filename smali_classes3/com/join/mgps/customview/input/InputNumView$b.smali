.class Lcom/join/mgps/customview/input/InputNumView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/InputNumView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/input/InputNumView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/InputNumView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->b:Lcom/join/mgps/customview/input/InputNumView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    if-ne p3, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->b:Lcom/join/mgps/customview/input/InputNumView;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/customview/input/InputView_Num;->c()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0xa

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    if-ne p3, p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->b:Lcom/join/mgps/customview/input/InputNumView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p3, "0"

    .line 27
    .line 28
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p1, 0x9

    .line 33
    .line 34
    if-ne p3, p1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->b:Lcom/join/mgps/customview/input/InputNumView;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    add-int/2addr p3, p2

    .line 44
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
