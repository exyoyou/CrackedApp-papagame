.class Lcom/join/mgps/activity/CloudActivity_$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity_;->showUploadDialogStop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/CloudActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity_;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$count",
            "val$all"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity_$d;->d:Lcom/join/mgps/activity/CloudActivity_;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/CloudActivity_$d;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/CloudActivity_$d;->c:I

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_$d;->d:Lcom/join/mgps/activity/CloudActivity_;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/CloudActivity_$d;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/CloudActivity_$d;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/CloudActivity_;->access$101(Lcom/join/mgps/activity/CloudActivity_;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
