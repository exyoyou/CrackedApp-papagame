.class Lcom/join/mgps/activity/GamePaiWeiActivty$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GamePaiWeiActivty;


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
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->k(Lcom/join/mgps/activity/GamePaiWeiActivty;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->u(Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$l;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
