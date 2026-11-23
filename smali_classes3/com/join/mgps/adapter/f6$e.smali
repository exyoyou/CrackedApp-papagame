.class Lcom/join/mgps/adapter/f6$e;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f6;->c0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/base/b;

.field final synthetic f:Lcom/join/mgps/adapter/f6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/base/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$helper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6$e;->f:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/f6$e;->e:Lcom/join/mgps/base/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/f6$e;->e:Lcom/join/mgps/base/b;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const v1, 0x7f071310

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 35
    .line 36
    :goto_0
    return-object v0
.end method
