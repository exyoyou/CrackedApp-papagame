.class Lcom/join/mgps/fragment/f4$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$o;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$o;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v1, v0}, Lcom/join/mgps/fragment/f4;->Y(Lcom/join/mgps/fragment/f4;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$o;->b:Lcom/join/mgps/fragment/f4;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$o;->b:Lcom/join/mgps/fragment/f4;

    .line 17
    .line 18
    iput v1, p1, Lcom/join/mgps/fragment/f4;->T:I

    .line 19
    .line 20
    return-void
.end method
