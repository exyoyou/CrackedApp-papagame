.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$300(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$402(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->getListData()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
