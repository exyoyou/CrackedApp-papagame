.class Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->initBtnData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)Ljava/util/List;

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
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;->a:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "0"

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x2

    .line 50
    return p1

    .line 51
    :cond_0
    const/4 p1, 0x1

    .line 52
    return p1
.end method
