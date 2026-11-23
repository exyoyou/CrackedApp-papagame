.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field final synthetic e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "mixins"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->d:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->a(I)Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
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
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long v0, p1

    .line 16
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->d:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const v0, 0x7f0d0853

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;

    .line 14
    .line 15
    invoke-direct {p3, p0, p2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 35
    .line 36
    iget-object v0, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->b:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->d:Landroid/view/View;

    .line 51
    .line 52
    new-instance v0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    return-object p2
.end method
