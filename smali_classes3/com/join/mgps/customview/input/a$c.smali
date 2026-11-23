.class Lcom/join/mgps/customview/input/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/input/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/a;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/input/a$c;->b:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/input/a$c;->b:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/input/a;->b(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/customview/input/InputNumView;->d()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
