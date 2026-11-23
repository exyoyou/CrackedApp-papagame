.class public final Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;-><init>(Lcom/join/android/app/component/video/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n+ 2 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n10#2:385\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n*L\n108#1:385\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n+ 2 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n10#2:385\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4\n*L\n108#1:385\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->onBind$lambda$0(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 14
    .line 15
    .line 16
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

    check-cast p3, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->onBind(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->onBind(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 1

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->getData()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->access$bindGame(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V

    .line 6
    iget-object p3, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    invoke-static {p3, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->access$bindGameDownload(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p3, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/c;

    invoke-direct {v0, p3, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/c;-><init>(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/c;",
            "I",
            "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

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

    const p3, 0x7f0d0429

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
