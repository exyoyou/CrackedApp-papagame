.class Lcom/join/mgps/customview/TabPageBoxIndicator$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/TabPageBoxIndicator;->e(ILjava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/customview/TabPageBoxIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageBoxIndicator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->c:Lcom/join/mgps/customview/TabPageBoxIndicator;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->b:I

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->c:Lcom/join/mgps/customview/TabPageBoxIndicator;

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$c;->b:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
