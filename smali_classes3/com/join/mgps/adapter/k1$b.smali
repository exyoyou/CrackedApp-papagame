.class Lcom/join/mgps/adapter/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ExpandLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:Lcom/join/mgps/adapter/k1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k1;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$commitDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k1$b;->b:Lcom/join/mgps/adapter/k1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/k1$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k1$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/k1$b;->b:Lcom/join/mgps/adapter/k1;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/join/mgps/adapter/k1;->f:Lcom/join/mgps/adapter/x1$p1;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1, v0}, Lcom/join/mgps/adapter/x1$p1;->onRootView(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method
