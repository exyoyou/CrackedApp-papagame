.class Lcom/join/mgps/fragment/ForumIndexFragment_$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/ForumIndexFragment_;->z0(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/join/mgps/fragment/ForumIndexFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/ForumIndexFragment_;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$labelSwitcher",
            "val$list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->d:Lcom/join/mgps/fragment/ForumIndexFragment_;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->d:Lcom/join/mgps/fragment/ForumIndexFragment_;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$x;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/ForumIndexFragment_;->Y0(Lcom/join/mgps/fragment/ForumIndexFragment_;ZLjava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
