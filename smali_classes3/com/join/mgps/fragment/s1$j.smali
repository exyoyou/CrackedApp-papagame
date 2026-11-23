.class Lcom/join/mgps/fragment/s1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s1;->e0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/join/mgps/fragment/s1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s1;Lcom/join/mgps/dto/RecommendLabelTag;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag",
            "val$tagTv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s1$j;->d:Lcom/join/mgps/fragment/s1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/s1$j;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/s1$j;->c:Landroid/widget/TextView;

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
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/s1$j;->d:Lcom/join/mgps/fragment/s1;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/fragment/s1;->u:Ljava/util/List;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/s1$j;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/s1$j;->d:Lcom/join/mgps/fragment/s1;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/fragment/s1;->u:Ljava/util/List;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/fragment/s1$j;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s1$j;->d:Lcom/join/mgps/fragment/s1;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/join/mgps/fragment/s1;->u:Ljava/util/List;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/fragment/s1$j;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s1$j;->c:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    xor-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/fragment/s1$j;->c:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
