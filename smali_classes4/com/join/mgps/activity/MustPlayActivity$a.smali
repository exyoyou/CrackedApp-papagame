.class Lcom/join/mgps/activity/MustPlayActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MustPlayActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MustPlayActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MustPlayActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity$a;->b:Lcom/join/mgps/activity/MustPlayActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity$a;->b:Lcom/join/mgps/activity/MustPlayActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/activity/MustPlayActivity;->isLoading:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/MustPlayActivity;->access$000(Lcom/join/mgps/activity/MustPlayActivity;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MustPlayActivity;->loadData(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
