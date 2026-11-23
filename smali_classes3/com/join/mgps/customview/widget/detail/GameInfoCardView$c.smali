.class Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;
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
.field final synthetic b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

.field final synthetic c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalShow_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->c:Lcom/join/mgps/customview/widget/detail/GameInfoCardView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/RankingHomeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v0, 0x3e9

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->c(I)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->a(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;->b:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getSub_title()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 53
    .line 54
    .line 55
    return-void
.end method
