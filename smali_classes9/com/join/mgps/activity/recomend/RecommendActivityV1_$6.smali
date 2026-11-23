.class Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivityV1_;->updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1_;

.field final synthetic val$dataBean:Lcom/join/mgps/activity/recomend/RecommendDataBean;

.field final synthetic val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1_;Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataBean",
            "val$protocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->val$dataBean:Lcom/join/mgps/activity/recomend/RecommendDataBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivityV1_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->val$dataBean:Lcom/join/mgps/activity/recomend/RecommendDataBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1_$6;->val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/recomend/RecommendActivityV1_;->access$301(Lcom/join/mgps/activity/recomend/RecommendActivityV1_;Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
