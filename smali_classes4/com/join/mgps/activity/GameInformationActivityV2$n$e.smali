.class Lcom/join/mgps/activity/GameInformationActivityV2$n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2$n;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameInformationActivityV2$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;->b:Lcom/join/mgps/activity/GameInformationActivityV2$n;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;->b:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;->b:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
