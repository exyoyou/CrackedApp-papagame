.class Lcom/join/mgps/activity/GamePaiWeiActivty$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/AutoScrollViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->u(Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$m;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
