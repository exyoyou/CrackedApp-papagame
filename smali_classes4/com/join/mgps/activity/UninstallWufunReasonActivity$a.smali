.class Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/UninstallWufunReasonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/UninstallWufunReasonActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/UninstallWufunReasonActivity;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/UninstallWufunReasonActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;->e:Lcom/join/mgps/activity/UninstallWufunReasonActivity;

    .line 2
    .line 3
    const p1, 0x7f0d04b7

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;Lcom/join/mgps/base/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;->t(Lcom/join/mgps/base/b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Lcom/join/mgps/base/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;->e:Lcom/join/mgps/activity/UninstallWufunReasonActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, p1}, Lcom/join/mgps/activity/UninstallWufunReasonActivity;->access$002(Lcom/join/mgps/activity/UninstallWufunReasonActivity;I)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
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
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;->s(Lcom/join/mgps/base/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Ljava/lang/String;)V
    .locals 2
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
    const v0, 0x7f0a18c8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a09bd

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;->e:Lcom/join/mgps/activity/UninstallWufunReasonActivity;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/activity/UninstallWufunReasonActivity;->access$000(Lcom/join/mgps/activity/UninstallWufunReasonActivity;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/activity/y9;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y9;-><init>(Lcom/join/mgps/activity/UninstallWufunReasonActivity$a;Lcom/join/mgps/base/b;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
