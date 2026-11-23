.class public final Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000bH\u0014J\"\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010!\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\"\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002Ra\u0010\u0006\u001aI\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012RL\u0010\u0013\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "<init>",
        "()V",
        "onLikeListener",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "comment",
        "",
        "position",
        "praiseType",
        "",
        "getOnLikeListener",
        "()Lkotlin/jvm/functions/Function3;",
        "setOnLikeListener",
        "(Lkotlin/jvm/functions/Function3;)V",
        "onGameIconClickListener",
        "Lkotlin/Function2;",
        "getOnGameIconClickListener",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnGameIconClickListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "item",
        "bindLikeUi",
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
.field private onGameIconClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onLikeListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onBindViewHolder$lambda$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onBindViewHolder$lambda$4(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lv2/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lv2/c;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lv2/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onGameIconClickListener:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static final onBindViewHolder$lambda$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$4(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f010095

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->is_praise()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/4 p3, 0x2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p3, 0x1

    .line 24
    :goto_0
    iget-object p1, p1, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onLikeListener:Lkotlin/jvm/functions/Function3;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p1, p0, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public final bindLikeUi(Lv2/c;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "comment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_praise()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0a18a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a09d9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->is_praise()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const p2, 0x7f0808d2

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const p2, 0x7f0808d3

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final getOnGameIconClickListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onGameIconClickListener:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnLikeListener()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onLikeListener:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onBindViewHolder(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;)V
    .locals 5
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getGame_name()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const v1, 0x7f0a1889

    invoke-virtual {p1, v1, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x201c

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_text()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0a1865

    invoke-virtual {p1, v1, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 4
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getNickname()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p2

    :goto_0
    const p2, 0x7f0a190e

    invoke-virtual {p1, p2, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_count()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a1866

    invoke-virtual {p1, v0, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    const p2, 0x7f0a09cb

    .line 6
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getGame_icon()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080caf

    .line 8
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    const v0, 0x7f0a09fa

    .line 9
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    const v0, 0x7f0a149c

    .line 12
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getGame_icon()Ljava/lang/String;

    move-result-object v3

    .line 14
    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 15
    invoke-static {v1, v2, v3, v4}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 16
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, "#99FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 17
    invoke-virtual {p0, p1, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->bindLikeUi(Lv2/c;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;)V

    .line 18
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/e;

    invoke-direct {v0, p0, p3, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/e;-><init>(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lv2/c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a1438

    .line 19
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAlsoLikeAdapter;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAlsoLikeAdapter;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 21
    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAlsoLikeAdapter;

    invoke-direct {v0}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAlsoLikeAdapter;-><init>()V

    .line 22
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 25
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    :cond_5
    new-instance p2, Lcom/join/kotlin/ui/gameexpress/adapter/f;

    invoke-direct {p2}, Lcom/join/kotlin/ui/gameexpress/adapter/f;-><init>()V

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 28
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getRecommend_game_list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    const p2, 0x7f0a0eae

    .line 29
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/g;

    invoke-direct {v0, p3, p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/g;-><init>(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lv2/c;

    const v0, 0x7f0d042c

    invoke-direct {p3, v0, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0714e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071310

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 5
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p3
.end method

.method public final setOnGameIconClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onGameIconClickListener:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnLikeListener(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->onLikeListener:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-void
.end method
