.class Lcom/join/mgps/activity/GivePraiceActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GivePraiceActivity;->AfterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GivePraiceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->b:Lcom/join/mgps/activity/GivePraiceActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->Refresh()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 7
    .line 8
    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->getCommunityValue()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->getValueComment()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
