.class Lcom/join/mgps/fragment/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/n;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/n$c;->b:Lcom/join/mgps/fragment/n;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n$c;->b:Lcom/join/mgps/fragment/n;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/n;->o:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/n;->d0(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/n$c;->b:Lcom/join/mgps/fragment/n;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/fragment/n;->N()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n$c;->b:Lcom/join/mgps/fragment/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/fragment/n;->o:I

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/fragment/n;->N()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/n$c;->b:Lcom/join/mgps/fragment/n;

    .line 10
    .line 11
    iget v1, v0, Lcom/join/mgps/fragment/n;->o:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/n;->d0(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
