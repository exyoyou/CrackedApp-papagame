.class Lcom/join/mgps/activity/HotVoucherActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HotVoucherActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HotVoucherActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HotVoucherActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HotVoucherActivity$b;->b:Lcom/join/mgps/activity/HotVoucherActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity$b;->b:Lcom/join/mgps/activity/HotVoucherActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/activity/HotVoucherActivity;->access$002(Lcom/join/mgps/activity/HotVoucherActivity;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity$b;->b:Lcom/join/mgps/activity/HotVoucherActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/activity/HotVoucherActivity;->loadData()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
