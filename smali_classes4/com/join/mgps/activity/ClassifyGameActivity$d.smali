.class Lcom/join/mgps/activity/ClassifyGameActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->showDataF(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method

.method public onTabSelect(I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showTitleName()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lt v0, p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity;->showDataF(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->title_textview:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->access$100(Lcom/join/mgps/activity/ClassifyGameActivity;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/CharSequence;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
