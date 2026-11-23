.class Lcom/join/mgps/activity/d2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d2;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/d2$b;->a:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/d2$b;->a:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/d2;->W:Lcom/join/mgps/callbacks/j;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/join/mgps/callbacks/j;->u()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
