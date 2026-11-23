.class Lcom/join/mgps/fragment/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/m;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/m;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/m;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/m$c;->b:Lcom/join/mgps/fragment/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m$c;->b:Lcom/join/mgps/fragment/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/fragment/m;->s:I

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/fragment/m;->N()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/m$c;->b:Lcom/join/mgps/fragment/m;

    .line 10
    .line 11
    iget v1, v0, Lcom/join/mgps/fragment/m;->s:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/m;->d0(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
