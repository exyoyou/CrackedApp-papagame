.class Lcom/join/mgps/fragment/b1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b1;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/b1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/b1$a;->a:Lcom/join/mgps/fragment/b1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/b1$a;->a:Lcom/join/mgps/fragment/b1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/b1;->e:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameEndgameVo()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/mgps/fragment/b1$a;->a:Lcom/join/mgps/fragment/b1;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/dto/EndGameBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/dto/EndGameBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/mgps/fragment/b1$a;->a:Lcom/join/mgps/fragment/b1;

    .line 51
    .line 52
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/dto/EndGameBean;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Lcom/join/mgps/fragment/b1;->M(Lcom/join/mgps/fragment/b1;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
