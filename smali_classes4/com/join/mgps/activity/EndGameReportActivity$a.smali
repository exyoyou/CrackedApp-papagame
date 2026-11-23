.class Lcom/join/mgps/activity/EndGameReportActivity$a;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/EndGameReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/EndGameReportTypeBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameReportTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/join/mgps/activity/EndGameReportActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/EndGameReportActivity;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/EndGameReportActivity;
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
            "Lcom/join/mgps/dto/EndGameReportTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameReportActivity$a;->f:Lcom/join/mgps/activity/EndGameReportActivity;

    .line 2
    .line 3
    const p1, 0x7f0d0407

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/activity/EndGameReportActivity$a;->e:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/activity/EndGameReportActivity$a;Lcom/join/mgps/dto/EndGameReportTypeBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/EndGameReportActivity$a;->t(Lcom/join/mgps/dto/EndGameReportTypeBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/EndGameReportTypeBean;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameReportActivity$a;->f:Lcom/join/mgps/activity/EndGameReportActivity;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/join/mgps/activity/EndGameReportActivity;->selectedReason:Lcom/join/mgps/dto/EndGameReportTypeBean;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameReportActivity$a;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/dto/EndGameReportTypeBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameReportTypeBean;->getCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameReportTypeBean;->getCode()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameReportTypeBean;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
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
    check-cast p2, Lcom/join/mgps/dto/EndGameReportTypeBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/EndGameReportActivity$a;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameReportTypeBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameReportTypeBean;)V
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
    const v0, 0x7f0a09bd

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameReportTypeBean;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a18c8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameReportTypeBean;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Lcom/join/mgps/activity/x0;

    .line 30
    .line 31
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/x0;-><init>(Lcom/join/mgps/activity/EndGameReportActivity$a;Lcom/join/mgps/dto/EndGameReportTypeBean;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
