.class Lcom/join/mgps/activity/ShareGameActivity$a;
.super Lcom/zhy/view/flowlayout/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/view/flowlayout/b<",
        "Lcom/join/mgps/dto/TipBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "datas"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$a;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/zhy/view/flowlayout/b;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "position",
            "s"
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/join/mgps/dto/TipBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/ShareGameActivity$a;->j(Lcom/zhy/view/flowlayout/FlowLayout;ILcom/join/mgps/dto/TipBean;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Lcom/zhy/view/flowlayout/FlowLayout;ILcom/join/mgps/dto/TipBean;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "s"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$a;->d:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/ShareGameActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->tips:Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x7f0d0838

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
