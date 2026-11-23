.class Lcom/join/mgps/activity/SimulatorAreaActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$202(Lcom/join/mgps/activity/SimulatorAreaActivity;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 17
    .line 18
    const-string v2, "m1"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$102(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$300(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->b:Lcom/join/mgps/activity/SimulatorAreaActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->access$100(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->loadData(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
