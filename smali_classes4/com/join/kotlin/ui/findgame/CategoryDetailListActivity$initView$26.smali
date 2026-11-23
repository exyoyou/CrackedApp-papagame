.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "onSelected",
        "",
        "id",
        "",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getTabType()Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->access$showTypeList(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
