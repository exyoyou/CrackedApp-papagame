.class Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleThreeActivity;->updateUI(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CollectionModuleThreeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->b:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->b:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    .line 2
    .line 3
    iget-object p3, p2, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->textViewTitle:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->access$000(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->b:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->textViewPosition:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "/"

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->b:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->access$100(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method
