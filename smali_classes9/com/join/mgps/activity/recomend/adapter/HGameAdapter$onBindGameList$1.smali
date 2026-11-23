.class public final Lcom/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;->onBindGameList(Lv2/a;Lcom/join/mgps/dto/AppBean;)V
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
        "com/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1",
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
.field final synthetic $bean:Lcom/join/mgps/dto/AppBean;

.field final synthetic this$0:Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/AppBean;Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1;->$bean:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1;->this$0:Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1;->$bean:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/adapter/HGameAdapter$onBindGameList$1;->this$0:Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "btnDown"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-super {p0, p1}, Lm6/c;->onViewClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
