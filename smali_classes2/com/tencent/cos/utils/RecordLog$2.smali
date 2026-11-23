.class Lcom/tencent/cos/utils/RecordLog$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/utils/RecordLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/utils/RecordLog;


# direct methods
.method constructor <init>(Lcom/tencent/cos/utils/RecordLog;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/cos/utils/RecordLog;->flush()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog$2;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/tencent/cos/utils/RecordLog;->flush()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const-wide/16 v0, 0x2710

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
