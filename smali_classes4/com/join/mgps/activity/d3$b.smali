.class Lcom/join/mgps/activity/d3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d3;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/d3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/d3$b;->b:Lcom/join/mgps/activity/d3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/activity/d3$b;->b:Lcom/join/mgps/activity/d3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->T:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/PaPaBannerListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->e(I)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->a(Z)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/d3$b;->b:Lcom/join/mgps/activity/d3;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/activity/d3;->T(Lcom/join/mgps/activity/d3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_company_id()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->c(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/d3$b;->b:Lcom/join/mgps/activity/d3;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/activity/d3;->T(Lcom/join/mgps/activity/d3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PaPaBannerListActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/PaPaBannerListActivity_$f;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 47
    .line 48
    .line 49
    return-void
.end method
