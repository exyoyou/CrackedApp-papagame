.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;-><init>(Lcom/join/android/app/component/video/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBind",
        "",
        "holder",
        "position",
        "item",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->onBind$lambda$2$lambda$1(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$2$lambda$1(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public isFullSpanItem(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->a(Lcom/chad/library/adapter/base/c$b;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 4

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    const v0, 0x7f0a149f

    .line 6
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1a3b

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 9
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScore()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1a3c

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 10
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Q1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1a3d

    .line 11
    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 12
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a1a3e

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    const v0, 0x7f0a0837

    .line 13
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    const v1, 0x7f0a038b

    .line 14
    invoke-virtual {p1, v1}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DiscoverBean;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverBean;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 20
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DiscoverBean;->getBg_color()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 21
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0711b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_1
    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->updateDailyGameUI(Lv2/c;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 25
    invoke-virtual {p3, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->initImageGallery(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V

    .line 26
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/adapter/d;

    invoke-direct {v0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/d;-><init>(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/c;",
            "I",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/c$b$a;->b(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d03de

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->c(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->d(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->e(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->f(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
