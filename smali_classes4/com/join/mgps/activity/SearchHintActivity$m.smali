.class Lcom/join/mgps/activity/SearchHintActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->initBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0xa4

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/join/mgps/activity/SearchHintActivity;->access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 69
    .line 70
    sget-object v1, Lcom/papa/sim/statistic/Event;->searchReturnClickGamePic:Lcom/papa/sim/statistic/Event;

    .line 71
    .line 72
    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$700(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method
