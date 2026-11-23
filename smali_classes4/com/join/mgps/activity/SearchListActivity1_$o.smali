.class Lcom/join/mgps/activity/SearchListActivity1_$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1_;->updateSpecialZoneInfo(Lcom/join/mgps/dto/SearchGameListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchGameListBean;

.field final synthetic c:Lcom/join/mgps/activity/SearchListActivity1_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/SearchGameListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_$o;->c:Lcom/join/mgps/activity/SearchListActivity1_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1_$o;->b:Lcom/join/mgps/dto/SearchGameListBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_$o;->c:Lcom/join/mgps/activity/SearchListActivity1_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1_$o;->b:Lcom/join/mgps/dto/SearchGameListBean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1_;->access$101(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/SearchGameListBean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
