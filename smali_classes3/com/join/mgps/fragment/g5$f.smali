.class Lcom/join/mgps/fragment/g5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g5;->onEventMainThread(Lcom/join/mgps/event/r;)V
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
.field final synthetic b:Lcom/join/mgps/fragment/g5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/g5$f;->b:Lcom/join/mgps/fragment/g5;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/g5$f;->b:Lcom/join/mgps/fragment/g5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/g5;->S(Lcom/join/mgps/fragment/g5;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/g5;->U(Lcom/join/mgps/fragment/g5;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/g5$f;->b:Lcom/join/mgps/fragment/g5;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/fragment/g5;->e:Lcom/join/mgps/adapter/b7;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g5$f;->a()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
