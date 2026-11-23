.class Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;
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
.field final synthetic e:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;->e:Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;

    .line 2
    .line 3
    const p1, 0x7f0d0442

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;->r(Lcom/join/mgps/base/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lcom/join/mgps/base/b;Ljava/lang/String;)V
    .locals 1
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
    const v0, 0x7f0a1857

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a1415

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 15
    .line 16
    const-string v0, "\u00d7"

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string p2, "#FEA00A"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "#333333"

    .line 28
    .line 29
    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
