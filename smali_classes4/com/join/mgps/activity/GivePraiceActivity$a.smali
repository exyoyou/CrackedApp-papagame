.class Lcom/join/mgps/activity/GivePraiceActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$a;->b:Lcom/join/mgps/activity/GivePraiceActivity;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$a;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->Refresh()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$a;->b:Lcom/join/mgps/activity/GivePraiceActivity;

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
    iput v2, v0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->getCommunityValue()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x2

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iput v2, v0, Lcom/join/mgps/activity/GivePraiceActivity;->pn:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->getValueComment()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
