.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "positon",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v3, 0x1

    .line 51
    if-ne v0, v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 v0, 0x7

    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x2

    .line 76
    :cond_3
    :goto_0
    return v1
.end method
