.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J/\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\u0007\"\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1",
        "Lcom/join/mgps/callbacks/VideoAllCallBackWrap;",
        "onClickBlank",
        "",
        "s",
        "",
        "objects",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "onClickCover",
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
.field final synthetic $container:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->$container:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "objects"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->$container:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onClickCover()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/callbacks/w;->onClickCover()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$1;->$container:Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
