.class Lcom/join/mgps/activity/message/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/e;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$b;->b:Lcom/join/mgps/activity/message/e;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$b;->b:Lcom/join/mgps/activity/message/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->M()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$b;->b:Lcom/join/mgps/activity/message/e;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/join/mgps/activity/message/e;->n:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->Q()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
