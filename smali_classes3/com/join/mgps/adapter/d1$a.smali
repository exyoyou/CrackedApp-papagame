.class Lcom/join/mgps/adapter/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d1;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/d1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d1;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$imgIndex",
            "val$rawPicList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d1$a;->d:Lcom/join/mgps/adapter/d1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/d1$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/d1$a;->c:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Lcom/join/mgps/adapter/d1$a;->b:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/d1$a;->c:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/r0;->G0(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
