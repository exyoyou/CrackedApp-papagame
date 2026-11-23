.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1",
        "Lcom/join/mgps/callbacks/impl/DownloadNormalCallbackImpl;",
        "onViewClicked",
        "",
        "downView",
        "Lcom/join/mgps/customview/DownloadNormalView;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p3, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lm6/c;->onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickAdvDownButton:Lcom/papa/sim/statistic/Event;

    .line 15
    .line 16
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
