.class Lcom/join/mgps/activity/g6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g6;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/g6;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g6;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/g6$a;->b:Lcom/join/mgps/activity/g6;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g6$a;->b:Lcom/join/mgps/activity/g6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/g6;->Y(Lcom/join/mgps/activity/g6;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/g6$a;->b:Lcom/join/mgps/activity/g6;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/g6;->c0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
