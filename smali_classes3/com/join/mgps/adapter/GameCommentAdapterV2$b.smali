.class Lcom/join/mgps/adapter/GameCommentAdapterV2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameCommentAdapterV2;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

.field final synthetic c:Lcom/join/mgps/adapter/GameCommentAdapterV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapterV2;Lcom/join/mgps/adapter/GameCommentAdapterV2$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalCommentViewHolder1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/GameCommentAdapterV2$i;->j(Lcom/join/mgps/adapter/GameCommentAdapterV2$i;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$i;->k:Landroid/widget/TextView;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$i;->k:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$b;->b:Lcom/join/mgps/adapter/GameCommentAdapterV2$i;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$i;->k:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method
