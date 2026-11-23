.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

.field public final synthetic e:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;Landroidx/viewpager2/widget/ViewPager2;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->b:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->d:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->e:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->b:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->d:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/c;->e:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->k(Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;Landroidx/viewpager2/widget/ViewPager2;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Landroid/view/View;)V

    return-void
.end method
