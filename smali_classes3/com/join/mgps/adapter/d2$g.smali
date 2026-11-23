.class Lcom/join/mgps/adapter/d2$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Lcom/join/mgps/adapter/d2$r1;

.field final synthetic d:Lcom/join/mgps/adapter/d2$r1;

.field final synthetic e:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/adapter/d2$r1;Lcom/join/mgps/adapter/d2$r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalCommentViewHolderx",
            "val$holderGDescribe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$g;->e:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$g;->c:Lcom/join/mgps/adapter/d2$r1;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/d2$g;->d:Lcom/join/mgps/adapter/d2$r1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/adapter/d2$g;->b:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/d2$g;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$g;->c:Lcom/join/mgps/adapter/d2$r1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$r1;->d:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, 0x0

    .line 24
    if-le v2, v3, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$g;->d:Lcom/join/mgps/adapter/d2$r1;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-lez v2, :cond_3

    .line 35
    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$g;->d:Lcom/join/mgps/adapter/d2$r1;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$g;->d:Lcom/join/mgps/adapter/d2$r1;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/join/mgps/adapter/d2$g;->b:Z

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$g;->d:Lcom/join/mgps/adapter/d2$r1;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/adapter/d2$r1;->e:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method
