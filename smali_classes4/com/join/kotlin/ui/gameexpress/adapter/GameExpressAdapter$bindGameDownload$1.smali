.class public final Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
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
        "com/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1",
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
.field final synthetic $game:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;->$game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    .line 4
    .line 5
    invoke-direct {p0, p3, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;->$game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;->this$0:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "btnDown"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1}, Lm6/c;->onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
