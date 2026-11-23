.class Lcom/join/mgps/socket/fight/arena/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;)V
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
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->b:Lcom/join/mgps/socket/fight/arena/a;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->b:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/a;->h(Lcom/join/mgps/socket/fight/arena/a;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->b:Lcom/join/mgps/socket/fight/arena/a;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$c;->b:Lcom/join/mgps/socket/fight/arena/a;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->g(Lcom/join/mgps/socket/fight/arena/a;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->onShareTypeChoice(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$c;->b:Lcom/join/mgps/socket/fight/arena/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
