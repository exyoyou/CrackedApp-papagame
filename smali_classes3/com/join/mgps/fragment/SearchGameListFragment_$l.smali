.class Lcom/join/mgps/fragment/SearchGameListFragment_$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/SearchGameListFragment_;->h0(Lcom/join/mgps/dto/SearchGameListBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchGameListBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/fragment/SearchGameListFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/SearchGameListFragment_;Lcom/join/mgps/dto/SearchGameListBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$pn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->d:Lcom/join/mgps/fragment/SearchGameListFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->b:Lcom/join/mgps/dto/SearchGameListBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->d:Lcom/join/mgps/fragment/SearchGameListFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->b:Lcom/join/mgps/dto/SearchGameListBean;

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$l;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/SearchGameListFragment_;->r0(Lcom/join/mgps/fragment/SearchGameListFragment_;Lcom/join/mgps/dto/SearchGameListBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
