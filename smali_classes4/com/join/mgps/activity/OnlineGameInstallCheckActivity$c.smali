.class Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;->e:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    const v0, 0x7f0d0466

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$100(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

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
    check-cast p2, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;)V
    .locals 3
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
    invoke-virtual {p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a09d5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0a18f6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a185c

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0a07c9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->d()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;->e:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$100(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x1

    .line 60
    sub-int/2addr v0, v1

    .line 61
    if-ge p1, v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    const p1, 0x7f0a04e1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1, v1}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 69
    .line 70
    .line 71
    return-void
.end method
