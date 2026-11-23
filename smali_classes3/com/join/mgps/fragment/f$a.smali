.class Lcom/join/mgps/fragment/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/control/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

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
    .locals 0

    .line 1
    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramInt"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "paramInt"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/a;->c:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/fragment/f$a$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/f$a$a;-><init>(Lcom/join/mgps/fragment/f$a;I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x64

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
