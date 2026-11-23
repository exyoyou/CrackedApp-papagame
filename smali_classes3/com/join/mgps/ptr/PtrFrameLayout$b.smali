.class Lcom/join/mgps/ptr/PtrFrameLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/join/mgps/ptr/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "mRefreshCompleteHook resume."

    .line 10
    .line 11
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout$b;->b:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->b(Lcom/join/mgps/ptr/PtrFrameLayout;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
