.class Lcom/join/mgps/activity/message/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/a;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/a;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$b;->b:Lcom/join/mgps/activity/message/a;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$b;->b:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->M()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$b;->b:Lcom/join/mgps/activity/message/a;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, v0, Lcom/join/mgps/activity/message/a;->m:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->P()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
