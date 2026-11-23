.class Lcom/join/mgps/fragment/q4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/q4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ge p3, p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sget-object p2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ne p1, p2, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/join/mgps/dto/AppBean;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/join/mgps/fragment/q4$c;->b:Lcom/join/mgps/fragment/q4;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/q4;->T(Lcom/join/mgps/dto/AppBean;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
