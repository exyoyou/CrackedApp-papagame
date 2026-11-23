.class Lcom/join/mgps/fragment/e6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/e6;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/e6;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e6;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/e6$a;->b:Lcom/join/mgps/fragment/e6;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6$a;->b:Lcom/join/mgps/fragment/e6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/e6;->Z(Lcom/join/mgps/fragment/e6;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e6$a;->b:Lcom/join/mgps/fragment/e6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/fragment/e6;->loadData()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
