.class Lcom/join/mgps/adapter/b7$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/b7;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

.field final synthetic c:Lcom/join/mgps/adapter/b7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/b7;Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b7$e;->c:Lcom/join/mgps/adapter/b7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/b7$e;->b:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/b7$e;->b:Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getFid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
