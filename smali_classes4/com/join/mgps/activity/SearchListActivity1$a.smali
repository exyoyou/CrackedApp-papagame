.class Lcom/join/mgps/activity/SearchListActivity1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->onEventMainThread(Lcom/join/mgps/event/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/SearchListActivity1;->gameDownLists:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->access$600(Lcom/join/mgps/activity/SearchListActivity1;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1$k;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1$a;->a()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
