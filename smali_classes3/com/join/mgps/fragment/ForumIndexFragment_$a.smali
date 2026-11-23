.class Lcom/join/mgps/fragment/ForumIndexFragment_$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/ForumIndexFragment_;->x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

.field final synthetic c:Lcom/join/mgps/fragment/ForumIndexFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$a;->c:Lcom/join/mgps/fragment/ForumIndexFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$a;->b:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$a;->c:Lcom/join/mgps/fragment/ForumIndexFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/ForumIndexFragment_$a;->b:Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/ForumIndexFragment_;->e1(Lcom/join/mgps/fragment/ForumIndexFragment_;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
