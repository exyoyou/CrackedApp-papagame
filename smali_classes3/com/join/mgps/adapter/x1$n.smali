.class Lcom/join/mgps/adapter/x1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ExpandLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/x1$n1;

.field final synthetic b:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Lcom/join/mgps/adapter/x1$n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$describ"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$n;->b:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$n;->a:Lcom/join/mgps/adapter/x1$n1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$n;->a:Lcom/join/mgps/adapter/x1$n1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/adapter/x1$n1;->d:Lcom/join/mgps/callbacks/l;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/join/mgps/callbacks/l;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method
