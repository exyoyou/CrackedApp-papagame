.class Lcom/join/mgps/activity/MGGameDetailActivity_$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity_;->resultShow(Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/activity/MGGameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$msg",
            "val$b",
            "val$position",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->f:Lcom/join/mgps/activity/MGGameDetailActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->c:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->d:I

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->e:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->f:Lcom/join/mgps/activity/MGGameDetailActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->c:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->d:I

    .line 8
    .line 9
    iget v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;->e:I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/MGGameDetailActivity_;->access$401(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
