.class Lcom/join/mgps/adapter/n6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/n6;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/n6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/n6;I)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/n6$b;->b:Lcom/join/mgps/adapter/n6;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/n6$b;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/n6$b;->b:Lcom/join/mgps/adapter/n6;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/n6;->d:Ljava/util/List;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/n6;->c:Ljava/util/List;

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/n6$b;->a:I

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/n6$b;->b:Lcom/join/mgps/adapter/n6;

    .line 22
    .line 23
    iget-object p2, p1, Lcom/join/mgps/adapter/n6;->d:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/adapter/n6;->c:Ljava/util/List;

    .line 26
    .line 27
    iget v0, p0, Lcom/join/mgps/adapter/n6$b;->a:I

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/n6$b;->b:Lcom/join/mgps/adapter/n6;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/adapter/n6;->a(Lcom/join/mgps/adapter/n6;)Lv6/e;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/join/mgps/adapter/n6$b;->b:Lcom/join/mgps/adapter/n6;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/join/mgps/adapter/n6;->d:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1, p2}, Lv6/e;->getDownData(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
