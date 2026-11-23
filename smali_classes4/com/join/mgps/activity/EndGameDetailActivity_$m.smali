.class Lcom/join/mgps/activity/EndGameDetailActivity_$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameDetailActivity_;->updateUi(Lcom/join/mgps/dto/EndGameDetailBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/EndGameDetailBean;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/activity/EndGameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameDetailActivity_;Lcom/join/mgps/dto/EndGameDetailBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$isRefreshAllData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->d:Lcom/join/mgps/activity/EndGameDetailActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->b:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->c:Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->d:Lcom/join/mgps/activity/EndGameDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->b:Lcom/join/mgps/dto/EndGameDetailBean;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/EndGameDetailActivity_$m;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/EndGameDetailActivity_;->access$001(Lcom/join/mgps/activity/EndGameDetailActivity_;Lcom/join/mgps/dto/EndGameDetailBean;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
