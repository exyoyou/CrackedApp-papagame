.class Lcom/join/mgps/activity/GameDiscoverActivity_$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDiscoverActivity_;->showMainUi(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/activity/GameDiscoverActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDiscoverActivity_;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameDiscoverBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDiscoverActivity_$e;->c:Lcom/join/mgps/activity/GameDiscoverActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDiscoverActivity_$e;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity_$e;->c:Lcom/join/mgps/activity/GameDiscoverActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameDiscoverActivity_$e;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDiscoverActivity_;->access$101(Lcom/join/mgps/activity/GameDiscoverActivity_;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
