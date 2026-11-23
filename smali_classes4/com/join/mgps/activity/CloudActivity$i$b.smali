.class Lcom/join/mgps/activity/CloudActivity$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/CloudActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 29
    .line 30
    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    iput v0, p1, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 42
    .line 43
    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p1, Lcom/join/mgps/activity/CloudActivity;->i:I

    .line 47
    .line 48
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/activity/CloudActivity;->updateBtn()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
