.class Lcom/join/mgps/activity/GameMainActivity3$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/ad/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->initGDTInfoStreamAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/join/mgps/ad/c$a<",
        "Lcom/qq/e/ads/nativ/NativeExpressADView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adView"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3$h;->b(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adView"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/b0;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v1, v2, p1}, Lcom/join/mgps/event/b0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3;->gdtList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x6

    .line 30
    if-ge p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity3;->access$1000(Lcom/join/mgps/activity/GameMainActivity3;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/join/mgps/event/a;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-direct {v0, v1}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->Exit_flowad_click:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity3;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/MApplication;->O(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->Exit_flowad_pop_gdt:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity3;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
