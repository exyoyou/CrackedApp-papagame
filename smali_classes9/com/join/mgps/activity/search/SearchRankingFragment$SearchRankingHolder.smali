.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchRankingHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field line:Landroid/view/View;

.field main:Landroid/view/View;

.field rankingNumber:Landroid/widget/TextView;

.field rankingNumberBack:Landroid/widget/TextView;

.field tag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/search/SearchRankingFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1305

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumber:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a1306

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a084f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    const p1, 0x7f0a00ee

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->appName:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a166e

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f0a0e61

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->line:Landroid/view/View;

    .line 69
    .line 70
    const p1, 0x7f0a0fee

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->main:Landroid/view/View;

    .line 78
    .line 79
    return-void
.end method
