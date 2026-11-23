.class Lcom/join/mgps/adapter/d7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d7;->c(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/d7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d7$a;->c:Lcom/join/mgps/adapter/d7;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/d7$a;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/adapter/d7$a;->c:Lcom/join/mgps/adapter/d7;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/d7;->d(Lcom/join/mgps/adapter/d7;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/join/mgps/adapter/d7$a;->b:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/join/mgps/adapter/d7;->e(Lcom/join/mgps/adapter/d7;Lcom/join/mgps/dto/BannerBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
