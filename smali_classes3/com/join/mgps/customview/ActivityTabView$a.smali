.class Lcom/join/mgps/customview/ActivityTabView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ActivityTabView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ActivityTabView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->b:Lcom/join/mgps/customview/ActivityTabView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->b:Lcom/join/mgps/customview/ActivityTabView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView$a;->b:Lcom/join/mgps/customview/ActivityTabView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/ActivityTabView;->a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/join/mgps/customview/ActivityTabView$d;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
