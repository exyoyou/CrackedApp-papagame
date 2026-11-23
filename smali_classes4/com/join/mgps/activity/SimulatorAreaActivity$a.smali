.class Lcom/join/mgps/activity/SimulatorAreaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorAreaActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SimulatorAreaActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$000(Lcom/join/mgps/activity/SimulatorAreaActivity;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 11
    .line 12
    const-string v1, "m2"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$102(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$100(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$200(Lcom/join/mgps/activity/SimulatorAreaActivity;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->loadData(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
