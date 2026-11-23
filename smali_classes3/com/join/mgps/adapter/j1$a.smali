.class Lcom/join/mgps/adapter/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/j1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/j1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/j1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j1$a;->c:Lcom/join/mgps/adapter/j1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/j1$a;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/adapter/j1$a;->c:Lcom/join/mgps/adapter/j1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/j1;->f:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/adapter/j1$a;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->E(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
