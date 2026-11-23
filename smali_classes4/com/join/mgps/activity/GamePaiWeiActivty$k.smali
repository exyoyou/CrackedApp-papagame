.class Lcom/join/mgps/activity/GamePaiWeiActivty$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->h(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/adapter/h6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/h6;->a(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->i(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->i(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->j(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$k;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->G()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
