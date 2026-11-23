.class Lcom/join/mgps/Util/UtilsMy$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->F(Lcom/join/mgps/dto/GameDetailRankingTag;Landroid/widget/LinearLayout;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/dto/GameDetailRankingTag;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/GameDetailRankingTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$j;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$j;->c:Lcom/join/mgps/dto/GameDetailRankingTag;

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
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$j;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/RankingHomeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x3e9

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->c(I)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$j;->c:Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$j;->c:Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->a(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$j;->c:Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getSub_title()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 56
    .line 57
    .line 58
    return-void
.end method
