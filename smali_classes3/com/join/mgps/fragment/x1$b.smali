.class Lcom/join/mgps/fragment/x1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/KeyboardListenLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/x1$b;->a:Lcom/join/mgps/fragment/x1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x1$b;->a:Lcom/join/mgps/fragment/x1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/fragment/x1;->c:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/x1;->R(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
