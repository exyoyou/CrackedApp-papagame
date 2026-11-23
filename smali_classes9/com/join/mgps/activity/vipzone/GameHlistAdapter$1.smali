.class Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

.field final synthetic val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;Lcom/join/mgps/activity/vipzone/bean/IconGame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$iconGame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    .line 16
    .line 17
    iget v2, v2, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->from:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
