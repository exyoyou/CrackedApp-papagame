.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/DiscoveryPaiweiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:I

.field final synthetic f:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->f:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    const v0, 0x7f0d03fd

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$500(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->e:I

    .line 15
    .line 16
    return-void
.end method

.method static synthetic r(Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->t(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;)V
    .locals 4
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0855

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;->getIcon()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0856

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;->getIcon()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v1, p2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->e:I

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-ne p2, v1, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p2, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->e:I

    .line 55
    .line 56
    if-eq p1, v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    :goto_1
    const p1, 0x7f0a0646

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1, v2}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 64
    .line 65
    .line 66
    return-void
.end method
