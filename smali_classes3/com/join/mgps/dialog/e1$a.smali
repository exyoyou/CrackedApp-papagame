.class Lcom/join/mgps/dialog/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/e1;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/e1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/e1;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/e1$a;->b:Lcom/join/mgps/dialog/e1;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/e1$a;->b:Lcom/join/mgps/dialog/e1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/e1;->a(Lcom/join/mgps/dialog/e1;)Lcom/join/mgps/dialog/e1$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/join/mgps/dialog/e1$c;->a()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/e1$a;->b:Lcom/join/mgps/dialog/e1;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dialog/e1;->b()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
