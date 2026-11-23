.class Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->a(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field final synthetic c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$modleFourBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;->c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;->c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/PaPaBannerListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->e(I)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->a(Z)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_company_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->c(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 41
    .line 42
    .line 43
    return-void
.end method
