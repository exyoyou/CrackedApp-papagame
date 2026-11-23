.class Lcom/join/mgps/customview/h0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/h0;-><init>(Landroid/content/Context;Lcom/join/mgps/customview/h0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/h0$e;

.field final synthetic c:Lcom/join/mgps/customview/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/h0;Lcom/join/mgps/customview/h0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/h0$c;->c:Lcom/join/mgps/customview/h0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/h0$c;->b:Lcom/join/mgps/customview/h0$e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "parent",
            "view",
            "position",
            "id"
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
    iget-object p1, p0, Lcom/join/mgps/customview/h0$c;->c:Lcom/join/mgps/customview/h0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/customview/h0$f;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-le p1, p3, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/h0$c;->c:Lcom/join/mgps/customview/h0;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/customview/h0;->r:Lcom/join/mgps/customview/h0$f;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/customview/h0$f;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/join/mgps/dto/GameConfig;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/customview/h0$c;->b:Lcom/join/mgps/customview/h0$e;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-interface {p2, p1}, Lcom/join/mgps/customview/h0$e;->b(Lcom/join/mgps/dto/GameConfig;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/h0$c;->c:Lcom/join/mgps/customview/h0;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
