.class Lcom/join/mgps/activity/PAPayCenterActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/PAPayCenterActivity;->access$000(Lcom/join/mgps/activity/PAPayCenterActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/PAPayCenterActivity;->access$100(Lcom/join/mgps/activity/PAPayCenterActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    .line 17
    .line 18
    iget v2, v2, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/PAPayCenterActivity;->loadPayHistory(Lcom/wufan/user/service/protobuf/UserInfo;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
