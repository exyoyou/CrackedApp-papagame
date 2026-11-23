.class Lcom/join/mgps/activity/PAPayCenterActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->updateList(Lcom/join/mgps/dto/PapayResultData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/PayAdinfo;

.field final synthetic c:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;Lcom/join/mgps/dto/PayAdinfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$inad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->c:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->b:Lcom/join/mgps/dto/PayAdinfo;

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
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->b:Lcom/join/mgps/dto/PayAdinfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayAdinfo;->getLink()Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->c:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
