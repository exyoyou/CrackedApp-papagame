.class Lcom/join/mgps/dialog/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/f;->d(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/dialog/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/f;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$infos",
            "val$isElite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/f$b;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/dialog/f$b;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/dialog/f$b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dialog/f$c;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/dialog/f$c;->b:I

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 12
    .line 13
    iget p2, p2, Lcom/join/mgps/dialog/f;->e:I

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/f$b;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/mgps/dialog/f$c;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dto/GameConfig;

    .line 27
    .line 28
    iget-boolean p2, p0, Lcom/join/mgps/dialog/f$b;->c:Z

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dialog/f;->b()V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 40
    .line 41
    invoke-interface {p2, p1}, Lcom/join/mgps/fragment/roomlist/c$m;->b(Lcom/join/mgps/dto/GameConfig;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dialog/f;->b()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const/4 p3, 0x1

    .line 55
    if-ne p2, p3, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/dialog/f$b;->d:Lcom/join/mgps/dialog/f;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 60
    .line 61
    invoke-interface {p2, p1}, Lcom/join/mgps/fragment/roomlist/c$m;->b(Lcom/join/mgps/dto/GameConfig;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method
