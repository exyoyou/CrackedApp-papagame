.class Lcom/baidu/oauth/sdkbqt/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/view/g;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/view/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/h;->a:Lcom/baidu/oauth/sdkbqt/view/g;

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
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/h;->a:Lcom/baidu/oauth/sdkbqt/view/g;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/view/g;->a(Lcom/baidu/oauth/sdkbqt/view/g;)Lcom/baidu/oauth/sdkbqt/view/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lcom/baidu/oauth/sdkbqt/view/i;->a(I)Lcom/baidu/oauth/sdkbqt/view/g$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p1, Lcom/baidu/oauth/sdkbqt/view/g$a;->c:Lcom/baidu/oauth/sdkbqt/view/g$b;

    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/baidu/oauth/sdkbqt/view/g$b;->a(Lcom/baidu/oauth/sdkbqt/view/g$a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
