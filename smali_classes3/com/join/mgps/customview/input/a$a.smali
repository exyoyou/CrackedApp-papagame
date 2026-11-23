.class Lcom/join/mgps/customview/input/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;


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
    iput-object p1, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/join/mgps/customview/input/InputNumView$d;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/input/a$a;->a:Lcom/join/mgps/customview/input/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/input/a;->a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/input/InputNumView$d;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
