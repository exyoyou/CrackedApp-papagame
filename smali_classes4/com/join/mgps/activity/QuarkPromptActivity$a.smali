.class Lcom/join/mgps/activity/QuarkPromptActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/QuarkPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/QuarkPromptActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 7
    .line 8
    iget v1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->todayLeftTimes:I

    .line 9
    .line 10
    sub-int/2addr v1, v0

    .line 11
    iput v1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->todayLeftTimes:I

    .line 12
    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->tv_count_down:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string v0, "00:00:00"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$000(Lcom/join/mgps/activity/QuarkPromptActivity;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    const-wide/16 v1, 0x3e8

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method
