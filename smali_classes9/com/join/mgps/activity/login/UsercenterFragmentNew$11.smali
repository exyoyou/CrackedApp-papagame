.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

.field final synthetic val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$item",
            "val$layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$layout:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$layout:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/join/mgps/dto/JumpInfoBean;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/JumpInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
