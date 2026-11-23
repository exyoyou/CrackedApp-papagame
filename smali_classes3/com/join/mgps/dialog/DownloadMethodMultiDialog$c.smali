.class Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadMethodMultiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
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
.field final synthetic e:Lcom/join/mgps/dialog/DownloadMethodMultiDialog;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dialog/DownloadMethodMultiDialog;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->e:Lcom/join/mgps/dialog/DownloadMethodMultiDialog;

    .line 2
    .line 3
    const p1, 0x7f0d060a

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->t(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->e:Lcom/join/mgps/dialog/DownloadMethodMultiDialog;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u83b7\u53d6\u4fe1\u606f\u5931\u8d25"

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->T(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p2, p2, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->checkboxAgreement:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->e:Lcom/join/mgps/dialog/DownloadMethodMultiDialog;

    .line 22
    .line 23
    const-string p2, "\u8bf7\u5148\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->T(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->s(Lcom/join/mgps/base/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;->e:Lcom/join/mgps/dialog/DownloadMethodMultiDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getGameName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0a1889

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a188e

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    sub-int/2addr v1, v2

    .line 32
    if-ge v0, v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    const v0, 0x7f0a04e1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/dialog/k0;

    .line 45
    .line 46
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/dialog/k0;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog$c;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
