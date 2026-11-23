.class Lcom/join/mgps/fragment/SearchGameListFragment_$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/SearchGameListFragment_;->i0(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/join/mgps/fragment/SearchGameListFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/SearchGameListFragment_;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$resetAdapter",
            "val$showRecommendTitle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->e:Lcom/join/mgps/fragment/SearchGameListFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->e:Lcom/join/mgps/fragment/SearchGameListFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->c:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/mgps/fragment/SearchGameListFragment_$k;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/fragment/SearchGameListFragment_;->q0(Lcom/join/mgps/fragment/SearchGameListFragment_;Ljava/util/List;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
