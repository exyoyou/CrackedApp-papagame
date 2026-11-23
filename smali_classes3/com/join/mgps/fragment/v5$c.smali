.class Lcom/join/mgps/fragment/v5$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/v5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/v5;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/v5;
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
            "Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v5$c;->e:Lcom/join/mgps/fragment/v5;

    .line 2
    .line 3
    const p1, 0x7f0d060d

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
    check-cast p2, Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/v5$c;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method protected r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;)V
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
    const v0, 0x7f0a09b4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;->getIcon()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a1846

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a1909

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorMomentBean$Achievement;->getUnlockRate()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 35
    .line 36
    .line 37
    return-void
.end method
