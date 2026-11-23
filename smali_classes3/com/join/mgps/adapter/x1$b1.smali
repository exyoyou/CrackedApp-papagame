.class Lcom/join/mgps/adapter/x1$b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/dto/CommentBaseBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$b1;->c:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$b1;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$b1;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$b1;->c:Lcom/join/mgps/adapter/x1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/adapter/x1;->i:Lcom/join/mgps/adapter/x1$p1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/join/mgps/adapter/x1$p1;->onRootView(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
