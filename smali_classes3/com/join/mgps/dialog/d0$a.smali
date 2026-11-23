.class Lcom/join/mgps/dialog/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/d0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/d0;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/d0$a;->b:Lcom/join/mgps/dialog/d0;

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
    const p1, 0x7f0a0344

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/CheckBox;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/dialog/d0$a;->b:Lcom/join/mgps/dialog/d0;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 p3, 0x0

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    check-cast p4, Ljava/lang/String;

    .line 40
    .line 41
    iget-object p5, p0, Lcom/join/mgps/dialog/d0$a;->b:Lcom/join/mgps/dialog/d0;

    .line 42
    .line 43
    iget-object p5, p5, Lcom/join/mgps/dialog/d0;->g:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Lcom/join/mgps/dto/CouponsData;

    .line 50
    .line 51
    invoke-virtual {p4}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    add-int/2addr p3, p4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/d0$a;->b:Lcom/join/mgps/dialog/d0;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/join/mgps/dialog/d0;->a(Lcom/join/mgps/dialog/d0;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-lt p3, p2, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/dialog/d0$a;->b:Lcom/join/mgps/dialog/d0;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/dialog/d0;->b(Lcom/join/mgps/dialog/d0;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "\u5df2\u8db3\u591f\u652f\u4ed8!"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    xor-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
