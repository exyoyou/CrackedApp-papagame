.class Lcom/join/mgps/customview/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/i0;->a(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GroupInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/customview/i0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/i0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/i0$a;->c:Lcom/join/mgps/customview/i0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/i0$a;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/customview/i0$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/customview/i0$b;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/customview/i0$b;->a:I

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/i0$a;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/mgps/customview/i0$b;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/customview/i0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/mgps/customview/i0$a;->c:Lcom/join/mgps/customview/i0;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/join/mgps/customview/i0;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 27
    .line 28
    invoke-interface {p2, p1}, Lcom/join/mgps/activity/posting/PostingActivity$m;->e(Lcom/join/mgps/dto/GroupInfoBean;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/i0$a;->c:Lcom/join/mgps/customview/i0;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
