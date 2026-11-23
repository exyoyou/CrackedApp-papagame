.class Lcom/join/mgps/Util/d2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/d2;->l(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$launchIntentForPackage",
            "val$userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/d2$a;->b:Landroid/content/Intent;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/Util/d2$a;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/Util/d2$a;->b:Landroid/content/Intent;

    .line 6
    .line 7
    iget v2, p0, Lcom/join/mgps/Util/d2$a;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->startActivity(Landroid/content/Intent;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
